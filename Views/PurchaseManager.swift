//
//  PurchaseManager.swift
//  BioTutor
//
//  Created by Kaveh Naini on 7/18/25.
//

import StoreKit
import Foundation

@MainActor
class PurchaseManager: ObservableObject {
    @Published var products: [Product] = []
    @Published var purchasedProductID: String? = nil

    static let shared = PurchaseManager()
    
    private init() {}

    func loadProducts() async {
        do {
            let storeProducts = try await Product.products(for: [
                "com.biolearn.plus",
                "com.biolearn.pro"
            ])
            products = storeProducts
            await updatePurchasedStatus()
        } catch {
            print("Failed to load products: \(error)")
        }
    }

    func purchase(_ product: Product) async {
        do {
            let result = try await product.purchase()
            switch result {
            case .success(let verification):
                switch verification {
                case .verified:
                    await updatePurchasedStatus()
                default:
                    print("Purchase not verified")
                }
            case .userCancelled:
                break
            default:
                break
            }
        } catch {
            print("Purchase error: \(error)")
        }
    }

    func updatePurchasedStatus() async {
        for await result in Transaction.currentEntitlements {
            guard case .verified(let transaction) = result else { continue }
            if transaction.productID == "com.biolearn.plus" {
                UserDefaults.standard.set("Plus", forKey: "subscriptionLevel")
                purchasedProductID = "com.biolearn.plus"
            } else if transaction.productID == "com.biolearn.pro" {
                UserDefaults.standard.set("Pro", forKey: "subscriptionLevel")
                purchasedProductID = "com.biolearn.pro"
            }
        }
    }

    func restore() async {
        try? await AppStore.sync()
        await updatePurchasedStatus()
    }
}

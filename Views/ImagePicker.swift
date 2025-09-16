//
//  ImagePicker.swift
//  BioTutor
//
//  Created by Kaveh Naini on 7/14/25.
//

import SwiftUI
import PhotosUI
import Vision

struct ImagePicker: UIViewControllerRepresentable {
    @Environment(\.presentationMode) var presentationMode
    @Binding var selectedImage: UIImage?
    var onTextExtracted: ((String) -> Void)? = nil  // ✅ Add this line

    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        let picker = PHPickerViewController(configuration: config)
        picker.delegate = context.coordinator
        return picker
    }

    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {}

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, PHPickerViewControllerDelegate {
        let parent: ImagePicker

        init(_ parent: ImagePicker) {
            self.parent = parent
        }

        func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
            picker.dismiss(animated: true)

            guard let provider = results.first?.itemProvider,
                  provider.canLoadObject(ofClass: UIImage.self) else {
                return
            }

            provider.loadObject(ofClass: UIImage.self) { image, _ in
                DispatchQueue.main.async {
                    guard let uiImage = image as? UIImage else { return }
                    self.parent.selectedImage = uiImage

                    // ✅ Perform OCR
                    extractText(from: uiImage) { text in
                        DispatchQueue.main.async {
                            self.parent.onTextExtracted?(text)
                        }
                    }
                }
            }
        }
    }
}

func extractText(from image: UIImage, completion: @escaping (String) -> Void) {
    guard let cgImage = image.cgImage else {
        completion("")
        return
    }

    let requestHandler = VNImageRequestHandler(cgImage: cgImage)
    let request = VNRecognizeTextRequest { (request, error) in
        guard let observations = request.results as? [VNRecognizedTextObservation] else {
            completion("")
            return
        }

        let text = observations.compactMap { $0.topCandidates(1).first?.string }.joined(separator: "\n")
        completion(text)
    }

    try? requestHandler.perform([request])
}

//
//  OpenAIService.swift
//  BioTutor
//
//  Created by Kaveh Naini on 7/16/25.
//
import Foundation
import UIKit

class OpenAIService {
    private let backendURL = "https://openai-vercel-backend-3rd.vercel.app/api/openai"

    func generateQuiz(from text: String, difficulty: String, length: Int, type: String, question: String, completion: @escaping (String) -> Void) {
        let prompt = "Generate a \(length)-question quiz at \(difficulty) difficulty, focused on \(type.lowercased()) concepts based on the following content:\n\n\(text). Please at the top put 'Quiz Answers at Bottom', and then put the Quiz Answers at the bottom. The questions should be either MCQ or FRQ based on the following text. (\(question)). PLEASE MAKE SURE TO PUT the correct answers at the bottom below the quiz!!!"
        sendPromptToBackend(prompt: prompt, completion: completion)
    }

    func summarizeText(_ text: String, length: String, completion: @escaping (String) -> Void) {
        let prompt = "Summarize the following text into \(length):\n\n\(text). If the text is not biology related, print 'Please enter biology related notes.' If it's just random text, print 'Please enter biology related notes.'"
        sendPromptToBackend(prompt: prompt, completion: completion)
    }

    func explainQuestion(_ question: String, completion: @escaping (String) -> Void) {
        let prompt = "Explain this question in-depth and provide the correct answer:\n\n\(question). If the text is not biology related, print 'Please enter biology related notes.' If it's just random text, print 'Please enter biology related notes.' Don't make it extremely long, though."
        sendPromptToBackend(prompt: prompt, completion: completion)
    }

    private func sendPromptToBackend(prompt: String, completion: @escaping (String) -> Void) {
        guard let url = URL(string: backendURL) else {
            completion("Invalid backend URL.")
            return
        }

        let requestBody: [String: Any] = [
            "prompt": prompt
        ]

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: requestBody)
        } catch {
            completion("Failed to encode request.")
            return
        }

        URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data,
                  error == nil,
                  let response = try? JSONDecoder().decode(OpenAIBackendResponse.self, from: data)
            else {
                completion("Failed to get response from backend.")
                return
            }

            completion(response.result.trimmingCharacters(in: .whitespacesAndNewlines))
        }.resume()
    }
}

// MARK: - Backend Response Model
struct OpenAIBackendResponse: Decodable {
    let result: String
}

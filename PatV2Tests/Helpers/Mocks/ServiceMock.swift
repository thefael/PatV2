@testable import PatV2
import UIKit

class ServiceMock<S>: Service {
    var fetchDataArgs: (url: URL, completion: (Result<S, Error>) -> Void)?
    var fetchImageArgs: (url: URL, completion: (Result<UIImage, Error>) -> Void)?

    func fetchData<T: Decodable>(from url: URL, completion: @escaping ((Result<T, Error>) -> Void)){
        fetchDataArgs = (url: url, completion: completion as! (Result<S, Error>) -> Void)
    }

    func fetchImage(from url: URL, completion: @escaping ((Result<UIImage, Error>) -> Void)) -> SuspendableTask {
        fetchImageArgs = (url: url, completion: completion)
        return SuspendableTaskMock()
    }
}

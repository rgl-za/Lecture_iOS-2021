//
//  QRCodeScannerExampleView.swift
//  QRCode
//
//  Created by 지현정 on 2021/09/14.
//

import SwiftUI

struct QRCodeScannerExampleView: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String?

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                if self.scannedCode != nil {
                    //스캔이 되었을 때 링크로 넘어가지는 부분
                    
                    //NavigationLink("Next page", destination: NextView(scannedCode: scannedCode!), isActive: .constant(true)).hidden()
                    
                    Text("self.scannedCode : \(self.scannedCode!)")
                    
                }
                Button("Scan Code") { //버튼을 클릭하면
                    self.isPresentingScanner = true //값이 변경되어 뷰를 새로 그림
                }
                .sheet(isPresented: $isPresentingScanner) { //sheet 아래에서 위로 올라오는 뷰
                    self.scannerSheet //해당하는 뷰를 보여줌
                }
                Text("Scan a QR code to begin")
            }

        }
    }

    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code
                    self.isPresentingScanner = false
                }
            }
        )
    }
}

struct QRCodeScannerExampleView_Previews: PreviewProvider{
    static var previews: some View{
        QRCodeScannerExampleView()
    }
}

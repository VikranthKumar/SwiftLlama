import SwiftUI

struct ContentView: View {
    @State private var viewModel = ViewModel()
    @State private var prompt = ""

    var body: some View {
        VStack {
            Text("Swift Llama Demo").font(.title)
            TextField("Prompt", text: $prompt, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .onSubmit {
                    viewModel.run(for: prompt)
                }
            Text(viewModel.result)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

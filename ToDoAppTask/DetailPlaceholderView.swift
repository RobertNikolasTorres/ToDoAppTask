struct DetailPlaceholderView: View {
    let title: String
    let icon: String
    let gradient: Gradient
    let description: String
    
    var body: some View {
        VStack(spacing: 24) {
            VStack(spacing: 16) {
                Image(systemName: icon)
                    .font(.system(size: 64, weight: .semibold))
                    .foregroundStyle(gradient)
                
                VStack(spacing: 8) {
                    Text(title)
                        .font(.system(size: 28, weight: .bold))
                        .foregroundColor(.black)
                    
                    Text(description)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                }
            }
            .padding(32)
            .background(Color.white.opacity(0.8))
            .cornerRadius(20)
            .padding(16)
            
            Spacer()
            
            VStack(spacing: 12) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "plus.circle.fill")
                        Text("Add Item")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: gradient, startPoint: .topLeading, endPoint: .bottomTrailing))
                    .cornerRadius(12)
                }
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "pencil.circle")
                        Text("Edit")
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.gray)
                    .background(Color.white.opacity(0.8))
                    .cornerRadius(12)
                }
            }
            .padding(16)
        }
    }
}

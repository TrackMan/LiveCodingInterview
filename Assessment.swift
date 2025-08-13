struct View: View {

    let viewModel: ProfileViewModel

    var body: some View {
        VStack {
            Text("")
        }
    }
    .task { await veiwModel.loadAll}

}

class ProfileViewModel: ObservableObject {
    @published var profile: Profile?
    @published var activities: Activities?
    @published var bag: Bag?
    @published var handicap: Handicap?

    let networkService: NetworkService

    func loadAll(userId:String) async {
        // networkService.fetchProfile { result in
        //     switch result {
        //         case let .success(profile):
        //             self.profile = profile

        //         case let .failure(error):
        //             print(error)
        //     }
        // }
        Task{
            do {
                let url = ""
                let p: Profile = try await networService.get(url)
                profile = p
            } catch let error {
                print("error")
            }
        }
        Task{
            do {
                let url = ""
                let p: activities = try await networService.get(url)
                activities = p
            } catch let error {
                print("error")
            }
        }
        Task{
            do {
                let url = ""
                let p: activities = try await networService.get(url)
                activities = p
            } catch let error {
                print("error")
            }
        }
        Task{
            do {
                let url = ""
                let p: activities = try await networService.get(url)
                activities = p
            } catch let error {
                print("error")
            }
        }
    }

}
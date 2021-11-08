import ArgumentParser

struct ExampleCommand: ParsableCommand {
    static let configuration = CommandConfiguration(
        abstract: "Example Command that showcases bug in the swift-argument-parser",
        version: "0.0.1"
    )
    
    @Argument(help: "Works as expected")
    var firstArg: String
    
    @Option(help: "Not recognized argument")
    var secondArg: String
    
    @Argument(parsing: .unconditionalRemaining, help:"Failure causing argument, especially the `unconditionalRemaining` option")
    var thirdArg: [String]
    
    func run() throws {
        print(firstArg)
        print(secondArg)
        thirdArg.forEach{ print($0) }
    }
}

ExampleCommand.main()

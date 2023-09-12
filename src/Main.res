Console.log("Hello, World!")

let file = Bun.readFile("../package.json")

Console.log(await file.json())

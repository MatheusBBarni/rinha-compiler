open Bun

let readFile = async () => {
  let file = bun.file(. `${Env.importMetaDir}/../rinha/test.json`)
  let data = await file.json(.)

  Console.log(data)
}

await readFile()

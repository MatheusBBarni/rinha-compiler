module File = {
  type t

  type jsonType = string

  type bunFile = {
    text: unit => promise<string>,
    json: unit => promise<jsonType>,
    size: float,
  }

  @send external file: (t, string) => bunFile = "file"
}

type t = {file: File.t}

@val external bun: t = "Bun"

let readFile = bun.file->File.file

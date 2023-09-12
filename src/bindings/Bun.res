module File = {
  type jsonType = string

  type bunFile = {
    text: unit => promise<string>,
    json: (. unit) => promise<jsonType>,
    size: float,
  }

  type t = (. string) => bunFile
}

type t = {file: File.t}

@val external bun: t = "Bun"

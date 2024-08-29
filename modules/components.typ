#let base-icon(url, size: 1em, width: none, height: none, bottom: -1em / 8) = {
  box[
    #pad(bottom: bottom)[
      #image(
        url,
        format: "svg",
        width: if width == none {
          size
        } else {
          width
        },
        height: if height == none {
          size
        } else {
          height
        },
      )
    ]
  ]
}

#let icon(query, size: 1em, width: none, height: none, bottom: -1em / 8) = {
  [#metadata(query) <icon>]
  let icon-db = json("../assets/.automatic/icon/manifest.json")
  if icon-db.at(query, default: none) != none {
    base-icon(
      "../assets/.automatic/icon/" + icon-db.at(query),
      size: size,
      width: width,
      height: height,
      bottom: bottom,
    )
  } else {
    text(fill: color.rgb("#ff0000"))[\#NO\_ICON: "#query"\#]
  }
}

#let icon-solved-ac(size: 1em, bottom: -1em / 4) = {
  base-icon("../assets/brand/solved-ac.svg", size: size, bottom: bottom)
}

#let chip(
  body,
  background: color.rgb("#d2d2d2"),
  foreground: color.rgb("#121212"),
) = [
  #box[
    #pad(bottom: -3pt)[
      #rect(
        radius: 50%,
        fill: background,
        inset: (left: 5pt, top: 3pt, bottom: 3pt, right: 5pt),
      )[
        #set text(fill: foreground)
        #body
      ]
    ]
  ]
]

#let tech-list = (
  rust: (
    icon: "devicon/rust",
    icon-dark: "devicon-plain/rust?color=#ffffff",
    label: "Rust",
  ),
  typescript: (icon: "devicon/typescript", label: "TypeScript"),
  typescript--short: (icon: "devicon/typescript", label: "TS"),
  mariadb: (icon: "devicon/mariadb", label: "MariaDB"),
  postgresql: (icon: "devicon/postgresql", label: "PostgreSQL"),
  amazonwebservices: (icon: "devicon/amazonwebservices-wordmark", label: "AWS"),
  dynamodb: (icon: "devicon/dynamodb", label: "DynamoDB"),
  mongodb: (icon: "devicon/mongodb", label: "MongoDB"),
  flutter: (icon: "devicon/flutter", label: "Flutter"),
  dart: (icon: "devicon/dart", label: "Dart"),
  git: (icon: "devicon/git", label: "Git"),
  github: (
    icon: "skill-icons/github-light",
    icon-dark: "skill-icons/github-dark",
    label: "GitHub",
  ),
  github-actions: (icon: "devicon/githubactions", label: "GitHub Actions"),
  nestjs: (icon: "devicon/nestjs", label: "Nest.js"),
  python: (icon: "devicon/python", label: "Python"),
  cplusplus: (icon: "devicon/cplusplus", label: "C++"),
)

#let tech-chips = for (k, v) in tech-list {
  (
    (k): chip[
      #set text(size: 8pt, weight: 600)
      #icon(v.icon) #v.label
    ],
  )
}

#import "modules/util.typ": *
#import "modules/activity.typ": *
#import "modules/components.typ": *
#import "modules/github.typ": *
#import "modules/solved-ac.typ": *
#import "metadata.typ": metadata

#let lang = "ko"

#set page(
  paper: "a4",
  margin: (top: 1.5cm, left: 1.5cm, right: 1.5cm, bottom: 1.8cm),
  header: context {
    if here().page() != 1 {
      pad(left: -0.4cm)[
        #text(fill: color.rgb("#575049"))[
          #text(weight: 700)[#metadata.name.nickname / #metadata.name.at(lang)]
        ]
      ]
    }
  },
  footer-descent: 0pt,
  footer: [
    #pad(left: -0.4cm, top: 0.6cm, bottom: -0.01cm)[
      #text(size: 10pt, fill: color.rgb("#575049"))[
        The above history is based on today's date, #datetime.today().display("[month] [day], [year]")
      ]~
    ]
    #align(right)[
      #pad(
        top: -1cm,
        right: -0.5cm,
      )[
        #square(
          size: 24pt,
          fill: color.rgb("#000000"),
          stroke: none,
          radius: (top-left: 25%, top-right: 25%, bottom-left: 25%, bottom-right: 25%),
        )[
          #place(horizon + center)[
            #text(fill: color.rgb("#ffffff"), weight: 900, number-width: "tabular")[
              #context {
                counter(page).display("1")
              }
            ]
          ]
        ]
      ]
    ]
  ],
)
#set text(font: "Pretendard", features: ("ss06",), fallback: true)
#show heading: set text(size: 16pt)

= #text(size: 32pt)[#metadata.name.at(lang)]
#pad(top: -1em, bottom: 0pt)[]

#{
  set text(size: 10pt)

  grid(
    columns: (auto, auto, auto),
    column-gutter: 24pt,
    align: bottom,

    // GitHub
    grid(
      columns: (auto, auto),
      column-gutter: 6pt,
      [#icon("devicon/github") *GitHub*],
      link("https://github.com/" + metadata.social.github)[\@#metadata.social.github],
    ),
    // Mail
    grid(
      columns: (auto, auto),
      column-gutter: 6pt,
      [#icon("lucide/mail") *Mail*], link("mailto:" + metadata.email)[#metadata.email],
    ),
    // Phone
    grid(
      columns: (auto, auto),
      column-gutter: 6pt,
      [#icon("lucide/phone") *Phone*], link("tel:" + metadata.phone.join())[#metadata.phone.join(" ")],
    ),
  )
}

#line(length: 100%, stroke: 0.1pt)

#pad(top: -1em, bottom: 0pt)[]
#activityList(
  header: metadata.body.at(lang).award.header,
  (
    activityEntry(
      from: datetime(year: 2024, month: 11, day: 22),
      title: "Honorable Mention - 2024 ICPC Asia Seoul Regional",
    )[],
    activityEntry(
      from: datetime(year: 2024, month: 11, day: 17),
      title: "Bronze Award - 2024 ICPC Asia Taichung Regional",
    )[],
  ),
)

// 학력
#pad(top: -0.5em, bottom: 0pt)[]
#activityList(
  header: metadata.body.at(lang).education.header,
  metadata.body.at(lang).education.body,
)

// 대외 활동
#pad(top: -0.5em, bottom: 0pt)[]
#activityList(
  header: metadata.body.at(lang).activity.header,
  metadata.body.at(lang).activity.body,
)

// 프로젝트
#pad(top: -0.5em, bottom: 0pt)[]
#activityList(
  header: metadata.body.at(lang).project.header,
  metadata.body.at(lang).project.body,
)

// 기술 스택
#pad(top: -0.5em, bottom: 0pt)[]
#text(size: 10pt)[
  #metadata.body.at(lang).skill.header
  #metadata.body.at(lang).skill.body
]

#import "modules/util.typ": *
#import "modules/activity.typ": *
#import "modules/components.typ": *
#import "modules/github.typ": *
#import "modules/solved-ac.typ": *
#import "metadata.typ": metadata

#set page(fill: color.rgb(0, 0, 0, 0))

#let theme = sys.inputs.at("theme", default: "light")
#let palette = if theme == "light" {
  (
    foreground1: color.rgb("#1f2328"),
    foreground2: color.rgb("#495057"),
    background1: color.rgb("#e6edf3"),
    link: color.rgb("#1c7ed6"),
  )
} else {
  (
    foreground1: color.rgb("#e6edf3"),
    foreground2: color.rgb("#ced4da"),
    background1: color.rgb("#1f2328"),
    link: color.rgb("#74c0fc"),
  )
}

#set page(paper: "a4", margin: 0pt)

#set text(
  font: "Pretendard",
  fill: palette.foreground1,
  features: ("ss06",),
  fallback: true,
)
#show heading: set text(size: 16pt)

#let lang = "ko"
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

#import "modules/util.typ": *
#import "modules/activity.typ": *
#import "modules/components.typ": *
#import "modules/github.typ": *
#import "modules/solved-ac.typ": *
#import "metadata.typ": metadata

#set page(
  paper: "a4",
  margin: (top: 1.5cm, left: 1.5cm, right: 1.5cm, bottom: 1.8cm),
  header: context {
    if here().page() != 1 {
      pad(left: -0.4cm)[
        #text(fill: color.rgb("#575049"))[
          #text(weight: 700)[#metadata.name.nickname / #metadata.name.real-english]
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

= #text(size: 32pt)[#metadata.name.real-english]
// #pad(top: -1em, bottom: 0pt)[]

// #pad()[]
#{
  set text(size: 10pt)
  grid(
    columns: (1fr, 1.5fr),
    grid(
      align: bottom,
      columns: (auto, 1fr),
      column-gutter: 16pt,
      row-gutter: 8pt,
      [#icon("lucide/mail") *Mail*], link("mailto:" + metadata.email)[#metadata.email],
      [#icon("lucide/phone") *Phone*], link("tel:" + metadata.phone.join())[#metadata.phone.join(" ")],
    ),

    grid(
      align: bottom,
      columns: (auto, 1fr),
      column-gutter: 16pt,
      row-gutter: 8pt,
      [#icon("devicon/github") *GitHub*],
      link("https://github.com/" + metadata.social.github)[\@#metadata.social.github],

      // [#icon("fontawesome/blog-solid") *blog*], link("https://w8385.dev")[ #metadata.social.blog],
    ),
  )
}

#line(length: 100%, stroke: 0.1pt)

#pad(top: -0.5em, bottom: 0pt)[]
#activityList(
  header: [
    == Awards and Honors
  ],
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

#pad(top: -1em, bottom: 0pt)[]
#activityList(
  header: [
    == Educations
  ],
  (
    activityEntry(
      from: datetime(year: 2018, month: 3, day: 1),
      to: datetime(year: 2025, month: 2, day: 28),
      title: "Bachelor, Computer Science & Engineering, Soongsil University",
    )[
      - Undergraduate Researcher, AI Security Lab

      - President & Study Lead, SSCC (Central Computer Club)

      - Study Lead, SCCC (CS Algorithm Study Group)
    ],
  ),
)

// #pad()[]
#activityList(
  header: [
    == Activities
  ],
  (
    activityEntry(
      from: datetime(year: 2023, month: 7, day: 3),
      to: datetime.today(),
      title: "Algorithm Problem Creation and Verification",
    )[
      Participating in problem creation, verification, and contest operations for over 10 algorithm competitions.
    ],
    activityEntry(
      from: datetime(year: 2023, month: 4, day: 3),
      to: datetime(year: 2023, month: 11, day: 30),
      title: "SW Maestro",
    )[
      Software development program hosted by Ministry of Science and ICT

      - Designed and implemented production-level software through team-based projects.
    ],
    activityEntry(
      from: datetime(year: 2022, month: 7, day: 1),
      to: datetime(year: 2023, month: 3, day: 30),
      title: "Best of the Best",
    )[
      Cybersecurity program hosted by Ministry of Science and ICT

      - Conducted security training including development security.
    ],
  ),
)

// #pad()[]
#activityList(
  header: [
    == Projects
  ],
  (
    activityEntry(
      from: datetime(year: 2024, month: 7, day: 1),
      to: datetime.today(),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("Coduck-team"),
        )
      ],
    )[
      Web-based platform for creating and validating algorithm problems.

      - Developed a secure online judging system using sandboxing to enforce compile-time and runtime isolation, ensuring safe and reliable code execution.
    ],
    activityEntry(
      from: datetime(year: 2022, month: 11, day: 1),
      to: datetime.today(),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("My-solved"),
        )
      ],
    )[
      Mobile app for managing solved algorithm problems across multiple platforms.

      - Developed and deployed a cross-platform mobile application, gaining hands-on experience in release, distribution, and user acquisition.
    ],
    activityEntry(
      from: datetime(year: 2024, month: 1, day: 1),
      to: datetime(year: 2024, month: 2, day: 28),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("Code-Poker"),
        )
      ],
    )[
      Website for scoreboard system that tracks members’ algorithm problem-solving activity.

      - Implemented performance optimizations through web data parsing and caching strategies to efficiently process and serve algorithm-related data.
    ],
    activityEntry(
      from: datetime(year: 2022, month: 3, day: 1),
      to: datetime(year: 2022, month: 6, day: 28),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          "Learnable Face Video De-identification",
        )
      ],
    )[
      Research for anonymizing facial identity while preserving temporal consistency.
      - Implemented and evaluated learning-based face de-identification pipelines that generate videos appearing as different identities while preserving original facial representations, focusing on video-level consistency and privacy-utility trade-offs.
    ],
  ),
)

// #pad()[]
#text(size: 10pt)[
  == Skills
  - Programming Languages: TypeScript, Rust, C++, Python
  - Languages: Korean (Native), English (Intermediate)
]

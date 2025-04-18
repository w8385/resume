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
          #text(weight: 700)[#metadata.name.nickname / #metadata.name.real-korean]
          ---
          #text(weight: 600, tracking: 1pt)[#metadata.role]
          \@
          #text(weight: 600, tracking: 0.5pt)[#metadata.location]
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

= #text(size: 32pt)[#metadata.name.nickname / #metadata.name.real-english]
#text(size: 12pt)[
  #text(weight: 900, tracking: 2pt)[#metadata.role]
  #text(weight: 600)[\@]
  #text(weight: 700, tracking: 1pt)[#metadata.location]
]

#{
  set text(size: 10pt)
  grid(
    columns: (1fr, 1.5fr),
    grid(
      columns: (auto, 1fr),
      column-gutter: 16pt,
      row-gutter: 8pt,
      [#icon("lucide/mail") *Mailbox*], link("mailto:" + metadata.email)[#metadata.email],
      [#icon("lucide/phone") *Phone*], link("tel:" + metadata.phone.join())[#metadata.phone.join(" ")],
    ),
    grid(
      columns: (auto, 1fr),
      column-gutter: 16pt,
      row-gutter: 8pt,
      [#icon("devicon/github") *GitHub*],
      link("https://github.com/" + metadata.social.github)[\@#metadata.social.github],

      [#icon("fontawesome/blog-solid") *blog*], link("https://w8385.dev")[ #metadata.social.blog],
    ),
  )
}

#text(size: 14pt, weight: 400)[
  #set par(leading: 8pt)
  #text(size: 8pt, weight: 900, top-edge: -0pt, bottom-edge: 0pt)[
    INTRODUCTION
  ] \
  #metadata.bio.en.title \
  #text(size: 10pt)[#metadata.bio.en.body]
]

#line(length: 100%, stroke: 0.75pt)
#activityList(
  header: [
    == Awards
  ],
  (
    activityEntry(
      from: datetime(year: 2024, month: 11, day: 22),
      title: "2024 ICPC Asia Seoul Resional - Honorable Mention (58th)",
    )[],
    activityEntry(
      from: datetime(year: 2024, month: 11, day: 17),
      title: "2024 ICPC Asia Taichung Regional - Bronze Award (35th)",
    )[],
  ),
)

#line(length: 100%, stroke: 0.75pt)

#activityList(
  header: [
    == Activities
  ],
  (
    activityEntry(
      from: datetime(year: 2023, month: 4, day: 3),
      to: datetime(year: 2023, month: 11, day: 30),
      title: "SW Maestro",
    )[
      As a creative and challenging software talent cultivation program, it helped me improve my software development skills through mentoring on software development and project management, as well as a six-month project experience.
    ],
    activityEntry(
      from: datetime(year: 2022, month: 7, day: 1),
      to: datetime(year: 2023, month: 3, day: 30),
      title: "Best of the Best",
    )[
      As a next-generation security leader training program, it enhanced my understanding of the security field through two months of specialized education and four months of hands-on project experience.
    ],
  ),
)

#line(length: 100%, stroke: 0.75pt)

#activityList(
  header: [
    == Projects
  ],
  (
    activityEntry(
      from: datetime(year: 2024, month: 7, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("Bibimbap-Team"), [ #tech-chips.rust ],
        )
      ],
    )[
      This project aims to replace existing algorithm problem review platforms by developing a web application that provides problem review and management features. We're focused on delivering a better user experience and improved performance compared to current platforms.
      - Developed a web application using Next.js
      - Built a Rust-based API server
      - Implemented problem review and management functionality
      - Strengthened security by running code compilation and execution within a sandbox environment
    ],
    activityEntry(
      from: datetime(year: 2024, month: 1, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("bo-an-bo"), [ #tech-chips.nestjs ],
        )
      ],
    )[
      We developed a web application that visualizes membership fee payment status by comparing member lists with transaction records from group bank accounts provided in Excel format. It offers more accurate and efficient management than manual Excel comparison methods.
      - Built the web application using React
      - Developed the API server with NestJS
      - Implemented user authentication and management using Kakao OAuth
      - Enabled Excel file upload and parsing for member lists and transaction records
      - Utilized MongoDB's time-series storage to store and visualize transaction data
    ],
    activityEntry(
      from: datetime(year: 2024, month: 1, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("Code-Poker"), [ #tech-chips.nestjs ],
        )
      ],
    )[
      During the winter break, I organized an activity in a university PS (Problem Solving) club, where participants played board games and solved algorithm problems based on the points they lost. I developed an automated system to calculate scores based on each participant's problem-solving progress.
      - Built the web application using Next.js
      - Developed the API server with NestJS
      - Implemented parsers for collecting problem-solving data
      - Used Redis to cache and manage score calculation data
    ],
    activityEntry(
      from: datetime(year: 2023, month: 5, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("amicably-until-the-end"), [ #tech-chips.nestjs ],
        )
      ],
    )[
      This project was developed through the SW Maestro program and aimed to create a platform for real-time video tutoring between mentees and mentors. Starting from mentee questions, the system supports session creation, class management, and sharing of learning materials.

      - Led the team as project manager, coordinated schedules, and facilitated code reviews
      - Developed the Android application
      - Built the API server with NestJS
        - Implemented user authentication and management via Kakao OAuth
        - Integrated external SaaS to create real-time video channels
        - Used Redis Pub/Sub for tutoring session data synchronization across multiple instances
      - Designed and managed the AWS cloud infrastructure
        - Modeled and deployed DynamoDB for data storage
        - Used S3 for uploading and managing class materials
    ],
    activityEntry(
      from: datetime(year: 2022, month: 11, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("My-solved/My.solved"), [#tech-chips.flutter],
        )
      ],
    )[
      This is a cross-platform app designed to help users manage their solved.ac streaks and programming contest schedules more effectively. It provides features such as viewing solved.ac profiles, receiving scheduled streak notifications, searching for problems, and checking contest calendars with optional registration.
      - Developed the app using Flutter
        - Reverse-engineered solved.ac's internal API to fetch user data
      - Built the backend with NestJS
        - Implemented a fetch contest schedules from the Baekjoon Online Judge site
      - Built and deployed versions for iOS, Android, and Web
    ],
    activityEntry(
      from: datetime(year: 2022, month: 10, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("DF-CAT"), [ #tech-chips.python #tech-chips.nestjs],
        )
      ],
    )[
      This project was carried out as part of the Best of the Best program, aiming to develop a web-based platform that collects and analyzes digital forensic artifacts from a user’s computer. Users can search and analyze collected artifacts through the web interface.
      - Developed a Python-based tool to collect digital forensic artifacts
        - Stored artifact metadata in Excel format
      - Built a web application using Next.js
        - Visualized collected artifacts for user interaction
      - Implemented a NestJS API server
        - Enabled artifact search functionality
        - Processed uploaded Excel files and served the data to the frontend
      - Designed and managed AWS cloud infrastructure
        - Built a MariaDB database using RDS for artifact storage and querying
    ],
  ),
)

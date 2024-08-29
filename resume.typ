#import "modules/util.typ": *
#import "modules/activity.typ": *
#import "modules/components.typ": *
#import "modules/github.typ": *
#import "modules/solved-ac.typ": *
#import "metadata.typ": metadata

#set page(
  paper: "a4",
  margin: (top: 1.5cm, left: 1.5cm, right: 1.5cm, bottom: 1.8cm),
  header: locate(loc => if loc.page() != 1 {
    pad(left: -0.4cm)[
      #text(
        fill: color.rgb("#575049"),
      )[
        #text(weight: 700)[#metadata.name.nickname / #metadata.name.real-korean]
        ---
        #text(weight: 600, tracking: 1pt)[#metadata.role]
        \@
        #text(weight: 600, tracking: 0.5pt)[#metadata.location]
      ]
    ]
  }),
  footer-descent: 0pt,
  footer: [
    #pad(left: -0.4cm, top: 0.6cm, bottom: -0.01cm)[
      #text(size: 10pt, fill: color.rgb("#575049"))[
        상기 이력은
        #datetime.today().display("[year]년 [month]월 [day]일")
        기준입니다
      ]
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
              #counter(page).display("1")
            ]
          ]
        ]
      ]
    ]
  ],
)
#set text(font: "Pretendard", features: ("ss06",), fallback: true)
#show heading: set text(size: 16pt)

= #text(size: 32pt)[#metadata.name.nickname / #metadata.name.real-korean#super[#upper[#metadata.name.real-english]]]
#text(size: 12pt)[
  #text(weight: 900, tracking: 2pt)[#metadata.role]
  #text(weight: 600)[\@]
  #text(weight: 700, tracking: 1pt)[#metadata.location]
]

#text(size: 16pt, weight: 600)[
  #set par(leading: 8pt)
  #metadata.bio.ko \ #text(size: 13pt)[#metadata.bio.en]
]

#{
  set text(size: 10pt)
  grid(
    columns: (1fr, 1.5fr),
    grid(
      columns: (auto, 1fr),
      column-gutter: 16pt,
      row-gutter: 8pt,
      [#icon("lucide/mail") *전자 우편#super[Mailbox]*], link("mailto:" + metadata.email)[#metadata.email],
      [#icon("lucide/phone") *전화#super[Phone]*], link("tel:" + metadata.phone.join())[#metadata.phone.join(" ")],
    ),
    grid(
      columns: (auto, 1fr),
      column-gutter: 16pt,
      row-gutter: 8pt,
      [#icon("devicon/github") *GitHub*],
      link("https://github.com/" + metadata.social.github)[\@#metadata.social.github],

      [#icon-solved-ac() *solved.ac*],
      link("https://solved.ac/profile/" + metadata.social.solved-ac)[
        #solved-ac-profile(metadata.social.solved-ac)
      ],
    ),
  )
}

#line(length: 100%)

== 기술#super[Skills]

#align(center)[
  #box(inset: (left: 8pt, top: 4pt))[
    #for row in (
      (
        tech-list.cplusplus,
        tech-list.python,
        tech-list.rust,
        tech-list.typescript--short,
        tech-list.nestjs,
        tech-list.dart,
        tech-list.flutter,
      ),
      (
        tech-list.amazonwebservices,
        tech-list.dynamodb,
        tech-list.mariadb,
        tech-list.postgresql,
        tech-list.git,
        tech-list.github,
        tech-list.github-actions,
      ),
    ) {
      set text(size: 8pt)
      enumerate(
        row.map(tech => (icon(tech.icon, size: 16pt, bottom: 0pt), tech.label)),
      )
    }
  ]
]

#activityList(
  header: [
    == 대외 활동#super[Activities]
  ],
  (
    activityEntry(
      from: datetime(year: 2023, month: 4, day: 3),
      to: datetime(year: 2023, month: 11, day: 30),
      title: "SW Maestro - 소프트웨어 마에스트로",
    )[],
    activityEntry(
      from: datetime(year: 2022, month: 7, day: 1),
      to: datetime(year: 2023, month: 3, day: 30),
      title: "Best of the Best - 차세대 보안리더 양성 프로그램",
    )[],
  ),
)

#activityList(
  header: [
    == 프로젝트#super[Projects]
  ],
  (
    activityEntry(
      from: datetime(year: 2024, month: 7, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("Bibimbap-Team"), [ #tech-chips.rust #tech-chips.postgresql ],
        )
      ],
    )[
      알고리즘 문제 검수 플랫폼 "Bibimbap"을 개발하는 프로젝트로, Rust와 PostgreSQL을 사용했습니다. 수행한 주요 업무는 다음과 같습니다.
      - Rust를 활용한 백엔드 API 개발
    ],
    activityEntry(
      from: datetime(year: 2024, month: 4, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("bo-an-bo"), [ #tech-chips.nestjs #tech-chips.mongodb #tech-chips.github-actions ],
        )
      ],
    )[
      학기중 진행한 프로젝트로, 동아리 회계 관리를 보조하기 위한 웹 애플리케이션을 개발했습니다. 수행한 주요 업무는 다음과 같습니다.
      - Nest.js와 MongoDB를 활용한 백엔드 API 개발
      - Git Action을 활용한 CI/CD 구축
      - Excel 문서 암복호화, 파싱 및 업로드 기능 개발
    ],
    activityEntry(
      from: datetime(year: 2024, month: 1, day: 24),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("Code-Poker"), [ #tech-chips.nestjs #tech-chips.mongodb #tech-chips.github-actions ],
        )
      ],
    )[
      겨울방학 기간 교내 동아리에서 즐겨하던 보드게임 스코어보드 및 잃은 점수에 따른 알고리즘 문제 채점 현황을 확인할 수 있는 웹 애플리케이션을 개발했습니다. 수행한 주요 업무는 다음과 같습니다.
      - Nest.js와 MongoDB를 활용한 백엔드 API 개발
      - Git Action을 활용한 CI/CD 구축
    ],
    activityEntry(
      from: datetime(year: 2023, month: 5, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("amicably-until-the-end"),
          [ #tech-chips.nestjs #tech-chips.amazonwebservices #tech-chips.dynamodb #tech-chips.github-actions ],
        )
      ],
    )[
      SW Maestro에서 진행한 프로젝트로, 스마트폰 및 태블릿을 사용하는 학생들을 대상으로 한 실시간 과외 플랫폼 앱을 개발했습니다. 수행한 주요 업무는 다음과 같습니다.
      - Nest.js와 DynamoDB를 활용한 백엔드 API 개발
      - AWS를 활용한 클라우드 인프라 구축 및 관리
      - Git Action을 활용한 CI/CD 구축
      - 외부 SaaS를 활용한 과외 플랫폼 구축
    ],
    activityEntry(
      from: datetime(year: 2022, month: 11, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("My-solved/My.solved"), [#tech-chips.nestjs #tech-chips.flutter #tech-chips.github-actions ],
        )
      ],
    )[
      알고리즘 커뮤니티 solved.ac의 API를 활용한 프로젝트로, 사용자의 문제 풀이 현황 및 CP 대회 일정을 확인하는 앱을 개발했습니다. 크로스플랫폼 개발을 위해 Flutter를 사용했으며, App Store 및 Play Store, Web으로 배포했습니다. 크롤링을 위해 Nest.js 서버 또한 개발했습니다. 수행한 주요 업무는 다음과 같습니다.
      - Flutter를 활용한 모바일 앱 개발
      - Nest.js를 활용한 크롤링 서버 개발
      - Git Action을 활용한 CI/CD 구축
    ],
    activityEntry(
      from: datetime(year: 2022, month: 10, day: 1),
      title: pad(top: -1em / 4)[
        #grid(
          columns: (1fr, auto),
          gh-repo("DF-CAT"), [ #tech-chips.python #tech-chips.nestjs #tech-chips.amazonwebservices #tech-chips.mariadb],
        )
      ],
    )[
      Best of the Best에서 진행한 프로젝트로, "디지털포렌식 관점에서의 정보 유출 대응 프레임워크 개발"을 주제로 진행되었습니다. 수행한 주요 업무는 다음과 같습니다.
      - Python을 활용한 디지털 포렌식 아티팩트 수집 툴 개발
      - Nest.js와 MariaDB를 활용한 디지털 포렌식 아티팩트 검색 API 개발
      - AWS를 활용한 클라우드 인프라 구축 및 관리
    ],
  ),
)

== 오픈소스 기여#super[Open Source Contributions]

#for (url,) in metadata.oss-contribs {
  gh-pull-req(url)
}
#{
  let pulls = metadata.oss-contribs.map(((url,)) => gh-pull(url))
  let groups = pulls.map(pull => pull.nameWithOwner).dedup()
  for group in groups.filter(group => group != none) {
    [
      - #gh-repo(group)
        #for pull in pulls.filter(pull => pull.nameWithOwner == group) {
          [
            - #gh-pull-rich(pull)
          ]
        }
    ]
  }
}

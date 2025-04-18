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

= #text(size: 32pt)[#metadata.name.nickname / #metadata.name.real-korean#super[#upper[#metadata.name.real-english]]]
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
      [#icon("lucide/mail") *전자 우편#super[Mailbox]*], link("mailto:" + metadata.email)[#metadata.email],
      [#icon("lucide/phone") *전화#super[Phone]*], link("tel:" + metadata.phone.join())[#metadata.phone.join(" ")],
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
    자기소개 #sym.dash.em #text(tracking: 2pt)[INTRODUCTION]
  ] \
  #metadata.bio.ko.title \
  #text(size: 10pt)[#metadata.bio.ko.body]
]

#line(length: 100%, stroke: 0.75pt)
#activityList(
  header: [
    == 수상 실적#super[Awards]
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
    == 대외 활동#super[Activities]
  ],
  (
    activityEntry(
      from: datetime(year: 2023, month: 4, day: 3),
      to: datetime(year: 2023, month: 11, day: 30),
      title: "SW Maestro - 소프트웨어 마에스트로",
    )[
      창의도전형 SW인재 육성 프로그램으로, SW 개발 및 프로젝트 관리에 대한 멘토링과 6개월 간의 프로젝트 수행을 통해 SW 개발 능력을 향상시킬 수 있었습니다.
    ],
    activityEntry(
      from: datetime(year: 2022, month: 7, day: 1),
      to: datetime(year: 2023, month: 3, day: 30),
      title: "Best of the Best - 차세대 보안리더 양성 프로그램",
    )[
      차세대 보안리더 양성 프로그램으로, 두 달 간의 전공 교육과 4개월 간의 프로젝트 수행을 통해 보안 분야에 대한 이해도를 높일 수 있었습니다.
    ],
  ),
)

#line(length: 100%, stroke: 0.75pt)

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
          gh-repo("Bibimbap-Team"), [ #tech-chips.rust ],
        )
      ],
    )[
      기존의 알고리즘 문제 검수 플랫폼을 대체하기 위한 프로젝트로, 문제 검수 및 관리 기능을 제공하는 웹 애플리케이션을 개발중입니다. 기존의 문제 검수 플랫폼에 비해 더 나은 사용자 경험과 성능을 제공하기 위해 노력하고 있습니다.
      - Next.js 웹 애플리케이션 개발
      - Rust API 서버 개발
        - 문제 검수 및 관리 기능 구현
        - 소스코드 컴파일 및 실행시 샌드박스를 구성하여 보안성 강화
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
      회원 명단과 엑셀 형식으로 제공되는 모임통장 거래 내역을 비교하여 회비 납부 여부를 시각화해주는 웹 애플리케이션을 개발하였습니다. 수작업 엑셀 비교 방식보다 정확하고 빠른 회비 관리 기능을 제공합니다.
      - React 웹 애플리케이션 개발
      - NestJS API 서버 개발
        - kakao OAuth를 활용한 사용자 인증 및 관리
        - 회원 명단 및 거래 내역 엑셀 파일 업로드 및 파싱
        - MongoDB 시계열 저장 방식을 활용하여 거래내역 저장 및 시각화
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
      겨울방학 동안 교내 PS 소모임에서 운영한 활동으로, 보드게임을 진행하고 각자 잃은 점수만큼 알고리즘 문제를 푸는 방식으로 진행했습니다. 참여자별 문제 풀이 현황에 따라 점수를 계산하는 자동화 시스템을 구현하였습니다.
      - Next.js 웹 애플리케이션 개발
      - NestJS API 서버 개발
        - 문제 풀이 데이터 수집용 파싱 구현
        - Redis 기반 점수 계산 데이터 캐싱 및 관리
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
      SW Maestro에서 진행한 프로젝트로, 멘티와 멘토 간 실시간 화상 과외를 제공하는 플랫폼을 개발했습니다. 멘티의 질문으로부터 시작하여 과외 생성, 과외 세션 관리, 수업 자료 공유 등의 기능을 제공합니다.
      - 팀 리더로서 일정 조율, 코드 리뷰 주도
      - Android 앱 개발
      - NestJS API 서버 개발
        - kakao OAuth를 활용한 사용자 인증 및 관리
        - 외부 SaaS 연동을 통한 실시간 영상 채널 생성 로직 구성
        - Redis Pub/Sub을 활용한 다중 인스턴스에서의 과외 채널 데이터 동기화
      - AWS 클라우드 인프라 구축 및 관리
        - DynamoDB 데이터베이스 설계 및 구축
        - S3를 활용한 수업 자료 업로드 및 관리
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
      알고리즘 문제해결 커뮤니티 solved.ac의 정보를 바탕으로, 유저의 스트릭 유지 및 대회 일정을 효과적으로 관리할 수 있도록 돕는 크로스 플랫폼 앱입니다. solved.ac 프로필 확인, 정시 스트릭 알림, 문제 검색, 대회 일정 확인 및 캘린더 등록 기능을 제공합니다.
      - Flutter 앱 개발
        - solved.ac의 내부 API를 리버스 엔지니어링하여 데이터 수집
      - NestJS API 서버 개발
        - 백준 사이트의 대회 일정 크롤링
      - iOS, Android, Web 버전 빌드 및 배포
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
      Best of the Best에서 진행한 프로젝트로, 사용자의 컴퓨터에서 디지털 포렌식 아티팩트를 수집하고, 이를 검색할 수 있는 웹 기반 플랫폼을 개발했습니다. 사용자는 자신의 컴퓨터에서 수집된 아티팩트를 검색하고, 이를 분석할 수 있습니다.
      - Python 디지털 포렌식 아티팩트 수집 툴 개발
        - 수집된 아티팩트의 메타데이터를 엑셀로 저장
      - Next.js 웹 애플리케이션 개발
        - 수집된 아티팩트를 시각화하여 제공
      - NestJS API 서버 개발
        - 디지털 포렌식 아티팩트 검색 기능 구현
        - 수집된 아티팩트 엑셀을 업로드하고 가공하여 웹 애플리케이션으로 반환
      - AWS 클라우드 인프라 구축 및 관리
        - RDS 기반 MariaDB 데이터베이스 설계 및 구축
    ],
  ),
)

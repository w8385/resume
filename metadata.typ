#import "modules/activity.typ": *
#import "modules/github.typ": *

#let metadata = (
  name: (
    nickname: "w8385",
    ko: "박근형",
    en: "Keun-hyeong Park",
  ),
  email: "me@w8385.dev",
  phone: ("+82", "10", "6721", "8385"),
  github: "w8385",
  social: (github: "w8385", blog: "https://w8385.dev"),
  oss-contribs: (
    (url: "https://github.com/solvedac/unofficial-documentation/pull/72"),
    (url: "https://github.com/solvedac/unofficial-documentation/pull/54"),
  ),
  body: (
    ko: (
      award: (
        header: [== 수상내역],
      ),
      education: (
        header: [== 학력],
        body: (
          activityEntry(
            from: datetime(year: 2018, month: 3, day: 1),
            to: datetime(year: 2025, month: 2, day: 28),
            title: "숭실대학교 소프트웨어학부 졸업",
          )[
            - AI 보안 연구실 학부 연구생

            - 중앙 컴퓨터 동아리(SSCC) 회장 및 스터디장

            - 컴퓨터학부 알고리즘 소모임(SCCC) 스터디장
          ],
        ),
      ),
      activity: (
        header: [== 대외 활동],
        body: (
          activityEntry(
            from: datetime(year: 2023, month: 7, day: 3),
            to: datetime.today(),
            title: "알고리즘 문제 출제 및 검수",
          )[
            10개 이상의 알고리즘 대회에서 문제 출제, 검수 및 대회 운영에 참여
          ],
          activityEntry(
            from: datetime(year: 2023, month: 4, day: 3),
            to: datetime(year: 2023, month: 11, day: 30),
            title: "SW 마에스트로",
          )[
            창의도전형 SW 인재 육성 프로그램 - 과학기술정보통신부 주관

            - SW 개발 및 프로젝트 관리에 대한 멘토링과 6개월 간의 프로젝트 수행을 통해 SW 개발 능력을 향상
          ],
          activityEntry(
            from: datetime(year: 2022, month: 7, day: 1),
            to: datetime(year: 2023, month: 3, day: 30),
            title: "Best of the Best",
          )[
            차세대 보안 인재 양성 프로그램 - 과학기술정보통신부 주관

            - 2개월 간의 전공 교육과 4개월 간의 프로젝트 수행을 통해 보안 분야에 대한 이해도 향상
          ],
        ),
      ),
      project: (
        header: [== 프로젝트],
        body: (
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
            알고리즘 문제 출제 및 검수를 위한 웹 플랫폼
            - 샌드박스 기반의 온라인 저지 시스템을 개발하여 컴파일 및 런타임 단계에서 격리 적용
            - 안전하고 신뢰성 있는 코드 실행 환경 구현
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
            알고리즘 플랫폼의 문제 풀이 이력을 관리하는 모바일 애플리케이션
            - Flutter를 활용한 크로스플랫폼 모바일 앱 개발
            - 출시, 배포 및 사용자 확보 전반에 대한 경험 획득
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
            소모임원의 알고리즘 문제 풀이 활동을 추적하는 스코어보드 웹사이트
            - NestJS를 활용한 백엔드 서버 개발
            - 웹 데이터 파싱 및 캐싱 전략을 통한 성능 최적화 구현
          ],
          activityEntry(
            from: datetime(year: 2022, month: 3, day: 1),
            to: datetime(year: 2022, month: 6, day: 28),
            title: pad(top: -1em / 4)[
              #grid(
                columns: (1fr, auto),
                "학습가능한 얼굴 영상 비식별화",
              )
            ],
          )[
            기존 얼굴의 주요 특징을 보존하면서도 다른 신원으로 인식되도록 변환하는 연구
            - AI 보안 연구실 학부 연구생으로 참여
            - StyleGAN 기반 얼굴 생성 모델을 활용하여 비식별화된 얼굴 영상 생성 파이프라인 구현
            - 생성된 영상에 대해 신원 비식별성 및 특징적 일관성 측면에서 평가 수행
          ],
        ),
      ),
      skill: (
        header: [== 기술 스택],
        body: "- 프로그래밍 언어: TypeScript, Rust, C++, Python",
      ),
    ),
    en: (
      award: (
        header: [== Awards and Honors],
      ),
      education: (
        header: [== Educations],
        body: (
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
      ),
      activity: (
        header: [== Activities],
        body: (
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
      ),
      project: (
        header: [== Projects],
        body: (
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
            Website for scoreboard system that tracks members' algorithm problem-solving activity.

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
      ),
      skill: (
        header: [== Skills],
        body: "- Programming Languages: TypeScript, Rust, C++, Python\n- Languages: Korean (Native), English (Intermediate)",
      ),
    ),
  ),
)

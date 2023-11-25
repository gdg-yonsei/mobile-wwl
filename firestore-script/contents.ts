type ContentType = {
  description: string;
  genre: string[];
  poster_carousel: string;
  poster_detail: string;
  running_time: number;
  teaser_url: string;
  title_image: string;
  title_text: string;
  year: number;
};

export const Contents: Array<ContentType> = [
  {
    poster_carousel:
      "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/8D6C06F6BDC6DCCCFD145BEDA6C3ECE9BFD270438C2D3C18267091113328696E/scale?width=800&aspectRatio=1.78&format=jpeg",
    poster_detail:
      "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/517116E247C883871E44D00BD0D88DBB7D8A413A400E3229F27987D0EA591730/scale?width=2880&aspectRatio=1.78&format=jpeg",
    title_image:
      "https://prod-ripcut-delivery.disney-plus.net/v1/variant/disney/06D1186C11A973373C18AC1489CA55B404E48FB9766E8134C5D5D182A9DB7206/scale?width=2880&aspectRatio=1.78&format=png",
    year: 2019,
    title_text: "포드 V 페라리",
    running_time: 152,
    teaser_url: "https://youtu.be/sn7wcMigCCo?si=3pVr2cYiwXssgad8",
    description:
      "실화를 영화화한 작품. 선구적인 자동차 디자이너 캐럴 셸비와 겁 없는 레이서 켄 마일스가 1966년 르망 24시간 레이스에서 엔초 페라리의 레이싱 카에 도전한다. ",
    genre: ["Drama", "Biography", "Action", "Adventure"],
  },
];

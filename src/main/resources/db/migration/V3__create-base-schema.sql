CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `userId` varbinary(20) NOT NULL COMMENT '사용자아이디',
  `userPassword` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '사용자패스워드',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '이름',
  `loginFailCount` bigint(20) DEFAULT '0' COMMENT '로그인실패개수',
  `lastPasswordUpdatedAt` datetime DEFAULT NULL COMMENT '마지막패스워드변경일시',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  `country` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '국가',
  `reportedCount` bigint(20) DEFAULT '0' COMMENT '신고당한횟수',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users_posts`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `postId` bigint(20) NOT NULL COMMENT '글번호',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `posts`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `userId` bigint(20) NOT NULL COMMENT '사용자아이디',
  `imagePath` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '이미지경로',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '글내용',
  `likeCount` bigint(20) DEFAULT '0' COMMENT '좋아요 수',
  `reportedCount` bigint(20) DEFAULT '0' COMMENT '신고당한횟수',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '글상태',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `replies`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `userId` bigint(20) NOT NULL COMMENT '사용자아이디',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '댓글내용',
  `likeCount` bigint(20) DEFAULT '0' COMMENT '좋아요 수',
  `reportedCount` bigint(20) DEFAULT '0' COMMENT '신고당한횟수',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '댓글상태',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `post_reports`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `userId` bigint(20) NOT NULL COMMENT '사용자아이디',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `reportTypeId` bigint(20) NOT NULL COMMENT '신고유형아이디',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '신고이유(설명)',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reply_reports`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `userId` bigint(20) NOT NULL COMMENT '사용자아이디',
  `replyId` bigint(20) NOT NULL COMMENT '댓글아이디',
  `reportTypeId` bigint(20) NOT NULL COMMENT '신고유형아이디',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '신고이유(설명)',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `reportTypes`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `reportTypeCode` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '신고유형코드번',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `daily_rank`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `rank` bigint(20) NOT NULL COMMENT '사용자아이디',
  `rankDate` datetime NOT NULL COMMENT '랭킹반영일시',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `rankedLike` bigint(20) DEFAULT '0' COMMENT '랭킹등록시좋아요수',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `weekly_rank`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `rank` bigint(20) NOT NULL COMMENT '사용자아이디',
  `rankWeek` datetime NOT NULL COMMENT '랭킹반영일시',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `rankedLike` bigint(20) DEFAULT '0' COMMENT '랭킹등록시좋아요수',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `monthly_rank`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `rank` bigint(20) NOT NULL COMMENT '사용자아이디',
  `rankMonth` datetime NOT NULL COMMENT '랭킹반영일시',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `rankedLike` bigint(20) DEFAULT '0' COMMENT '랭킹등록시좋아요수',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `annualy_rank`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `rank` bigint(20) NOT NULL COMMENT '사용자아이디',
  `rankYear` datetime NOT NULL COMMENT '랭킹반영일시',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `rankedLike` bigint(20) DEFAULT '0' COMMENT '랭킹등록시좋아요수',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `post_like_member`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '아이디',
  `postId` bigint(20) NOT NULL COMMENT '글아이디',
  `userId` bigint(20) NOT NULL COMMENT '사용아이디',
  `createdAt` datetime NOT NULL COMMENT '생성일시',
  `updatedAt` datetime DEFAULT NULL COMMENT '수정일시',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
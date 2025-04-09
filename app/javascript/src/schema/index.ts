// import { z } from "zod";

// export const DBMessage = z.object({
//   id: z.string(),
//   chatId: z.string(),
//   role: z.string(),
//   parts: z.string(),
//   attachments: z.string(),
//   createdAt: z.date(),
//   updatedAt: z.date(),
// });

export interface User {
  id: string;
  email: string;
  createdAt: Date;
}

export interface DBMessage {
  id: string;
  chatId: string;
  role: string;
  parts: string;
  attachements: string;
  createdAt: Date;
  updatedAt: Date;
}

export interface Document {
  id: string;
  title: string;
  content: null | string;
  kind: string;
  userId: string;
  createdAt: Date;
  updatedAt: Date;
}
const Appearance = ["inherit", "light", "dark"] as const;
type AppearanceType = (typeof Appearance)[number];

const VISIBILITY = ["public", "private"] as const;
type VISIBILITY_TYPE = (typeof VISIBILITY)[number];
export interface Chat {
  id: string;
  title: string;
  updatedAt: Date;
  createdAt: Date;
  visibility: VISIBILITY_TYPE
}

export interface Message {
  id: string;
  chatId: string;
  role: string;
  attachments: string;
  parts: string;
  createdAt: Date;
  updatedAt: Date;
}

export interface Vote {
  chatId: string;
  messageId: string;
  isUpvoted: boolean;
}

export interface Suggestion {
  id: string;
  documentId: string;
  userId: string;
  documentCreatedAt: Date;
  originalText: string;
  suggestedText: string;
  description: string;
  isResolved: boolean;
  createdAt: Date;
  updatedAt: Date;
}
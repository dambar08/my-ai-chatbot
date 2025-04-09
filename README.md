# README

<p align="center">
  An Open-Source AI Chatbot Template Built With Ruby on Rails and the AI SDK by Vercel.
</p>

<div>
    <img src="https://img.shields.io/badge/-Ruby_On_Rails-black?style=for-the-badge&logoColor=white&logo=rubyonrails&color=ff0000" alt="TypeScript" />
    <img src="https://img.shields.io/badge/-PostgreSQL-black?style=for-the-badge&logoColor=white&logo=postgresql&color=4169E1" alt="postgresql" />
    <img src="https://img.shields.io/badge/-React-black?style=for-the-badge&logoColor=black&logo=react&color=61DAFB" alt="react" />
    <img src="https://img.shields.io/badge/-Typescript-black?style=for-the-badge&logoColor=white&logo=postgresql&color=3178C6" alt="typescript" />
    <img src="https://img.shields.io/badge/-Tailwind_CSS-black?style=for-the-badge&logoColor=white&logo=tailwindcss&color=06B6D4" alt="tailwindcss" />
    <img src="https://img.shields.io/badge/-Docker-black?style=for-the-badge&logoColor=white&logo=tailwindcss&color=1D63ED" alt="docker" />
</div>

<p align="center">
  <a href="#features"><strong>Features</strong></a> ·
  <a href="#model-providers"><strong>Model Providers</strong></a> ·
  <a href="#running-locally"><strong>Running locally</strong></a>
</p>
<br/>

## Features

- [Ruby on Rails](https://rubyonrails.org/)
  - Advanced routing for seamless navigation and performance
  - React Server Components (RSCs) and Server Actions for server-side rendering and increased performance
- [AI SDK](https://sdk.vercel.ai/docs)
  - Unified API for generating text, structured objects, and tool calls with LLMs
  - Hooks for building dynamic chat and generative user interfaces
  - Supports OpenAI (default), Anthropic, Cohere, and other model providers
- [radix/ui](https://radix-ui.com)
  - Styling with [Tailwind CSS](https://tailwindcss.com)
  - Component primitives from [Radix UI](https://radix-ui.com) for accessibility and flexibility
- Data Persistence
  - [Docker powered Postgres 17](https://www.postgresql.org/docs/17/index.html) for saving chat history and user data
- [Rails 8 authentication]
  - Simple and secure authentication

## Model Providers

This template ships with OpenAI `gpt-4o` as the default. However, with the [AI SDK](https://sdk.vercel.ai/docs), you can switch LLM providers to [OpenAI](https://openai.com), [Anthropic](https://anthropic.com), [Cohere](https://cohere.com/), and [many more](https://sdk.vercel.ai/providers/ai-sdk-providers) with just a few lines of code.

## Deploy Your Own

> TODO

## Running locally

You will need to copy the environment variables [defined in `.env.local.example`](.env.local.example) to `.env.local` to run Rails AI Chatbot.

> Note: You should not commit your `.env` file or it will expose secrets that will allow others to control access to your various OpenAI and authentication provider accounts.

```bash
yarn
bundle
yarn run compose:app:up
bundle exec rails db:setup
bin/dev
```

Your app template should now be running on [localhost:3000](http://localhost:3000/).

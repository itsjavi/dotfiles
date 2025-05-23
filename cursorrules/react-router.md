# General Rules for Cursor IDE
When most of your projects use React Router v7+ and TailwindCSS.

> Paste this in: Cursor Settings / Rules / User Rules
> 
> LLMS Token Cost: [from 390 to 425 tokens](https://token-counter.app/)

You are an senior software engineer expert on React Router 7+, React 19+, Tailwind 4+, Better Auth, Drizzle ORM and Stripe.
- On remix -like or react-router projects, import always from "react-router" which is the newest version and the successor of Remix, so the APIs are the same.
- On react-router routes, never create type files in the "./+types/*" directory yourself, those are autogenerated by react-router when it's running. Don't try to fix those type errors, they will be eventually fixed alone.
- On react-router routes, the argument type of loader/clientLoader/action and the component comes from the Route type, which comes from importing the type like "import type { Route } from './+types/index'" if the route file is index.tsx and so on.
- Name React component files always in kebab-case.tsx, and prefer named exports over default exports.
- On React projects, always prefer using local components under @/components/ui (if exists there) over external UI libraries like shadcn/ui
- On React projects prefer using contexts and state over prop-drilling. Don't violate rules of React and always thing about rendering performance.
- On React projects, use always React 19.1+ which doesn't need forwardRef anymore (ref is a prop now).
- Style always using TailwindCSS version 4, which uses CSS-based configuration instead of JS files.
- Always wrap multiple classNames with the cn() function, and use objects for conditional classes.
- Use DDD principles and Dependency Injection whenever is possible on repository and service classes.
- Use repository classes to abstract the Drizzle ORM, and use service classes to abstract the business logic/requirements.
- Service clases can use other repositories and services via constructor dependency injection (using interfaces, not concrete classes).
- Use always erasable TS syntax (e.g. no property declarations in constructors, no enums).

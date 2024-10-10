---
title: 'Basic Concepts of Next.js'
date: 2024-10-07T15:55:53Z
draft: false
# weight: 1
# aliases: ["/first"]
tags: ["ChocoPark"]
author: "ChocoPark"
# author: ["Me", "You"] # multiple authors
showToc: true
TocOpen: false
hidemeta: false
comments: false
description: "Desc Text."
canonicalURL: "https://canonical.url/to/page"
disableHLJS: true # to disable highlightjs
disableShare: false
disableHLJS: false
hideSummary: false
searchHidden: true
ShowReadingTime: true
ShowBreadCrumbs: true
ShowPostNavLinks: true
ShowWordCount: true
ShowRssButtonInSectionTermList: true
UseHugoToc: true
showHero: true
heroStyle: "background"
cover:
  image: "/img/background.svg" # image path/url
  alt: "next.js" # alt text
  caption: "" # display caption under cover
  relative: false # when using page bundles set this to true
  hidden: false # only hide on current single page
editPost:
    URL: "https://github.com/<path_to_repo>/content"
    Text: "Suggest Changes" # edit text
    appendFilePath: true # to append file path to Edit link
---

> This post is based on the [official documentation](https://nextjs.org/docs) of Next.js.

<br>

## What is Next.js and why should we use it?

Next.js is a **framework** for the **React** library. Why would we need another framework when React itself works well already?🤔

<br>

### The biggest advantage of using Next.js

Many blog posts mention that the main reason for using Next.js is its ability to perform **Server-Side Rendering (SSR)**, which greatly enhances `Search Engine Optimization (SEO)`.  
This is absolutely true.

![nextjs](https://nextjs.org/static/images/learn/data-fetching/no-pre-rendering.png)

This is because React, by default, uses `Client-Side Rendering (CSR)`. As shown in the image above, when a website is requested, it fetches an empty HTML and loads the script, which results in longer initial loading times and weaknesses in Search Engine Optimization (SEO).

![nextjs](https://nextjs.org/static/images/learn/data-fetching/pre-rendering.png)

On the other hand, Next.js enhances user experience and SEO by allowing pre-rendered pages to be fetched with pre-rendered data. `Pre-rendering` includes not only **Server-Side Rendering (SSR)** but also **Static-Site Generation (SSG)**. Additionally, it allows for a mix of SSR and CSR, providing flexibility in rendering strategies.

### Is it impossible to implement SSR without Next.js?

I wondered whether SSR is impossible without Next.js. And I found that libraries like @loadable/component can enable SSR, and libraries like react-helmet can help with SEO.  
However, while these solutions are useful if you're already using a React project and suddenly find it challenging to adopt the Next.js framework for various reasons, I believe that if you're considering it before starting a project or have some time to spare, using Next.js is the best choice.

<br>
<br>

## What other features does Next.js offer?

### An intuitive page-based routing system

Next.js features an intuitive page-based routing system. Using the file system as the main API, each file in the **'pages'** directory automatically becomes a route. For example, **'pages/about.ts'** becomes accessible at **'/about'**. This approach simplifies development, making the codebase easier to understand and maintain, and allows for quick page creation and navigation.

### Client-side navigation for fast and smooth transitions between pages.

Next.js provides fast and seamless page transitions with client-side navigation. It prefetches linked pages and reloads only changed content, mimicking a single-page application (SPA). Using the **'\<Link /\>'** component, developers can easily implement this. Dynamic imports further optimize performance by loading only the necessary code for each page.

### Code Splitting

Next.js enables code splitting, allowing applications to load only the necessary parts when required. This reduces initial load time and improves overall performance. Next.js handles code splitting per page, ensuring quick load times and a responsive user experience, especially beneficial for large applications.

<br>
<br>

## Summary

- Next.js is a framework of react.
- React : vulnerable to SEO (due to performing CSR)  
  → Next.js : enhances performance and SEO (enables SSR or SSG through pre-rendering).
- Provides various features such as page-based routing, client-side navigation, and code splitting.  
  → Allows for comfortable development.

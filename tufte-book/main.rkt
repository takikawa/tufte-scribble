#lang racket/base

;; Implements the tufte-book Scribble style

(require racket/match
         scribble/base
         scribble/core
         scribble/latex-properties
         setup/collects
         (rename-in scribble/doclang
                    [#%module-begin -#%module-begin])
         (for-syntax racket/base))

(provide (all-from-out scribble/base)
         (except-out (all-from-out scribble/doclang)
                     -#%module-begin)
         (rename-out [--#%module-begin #%module-begin])

         publisher
         epigraph
         copyright-page)

(define (publisher . pcs)
  (apply elem pcs #:style "publisher"))

(define (epigraph blurb author)
  (make-multiarg-element "Topenepigraph" (list blurb author)))

(define (copyright-page . pcs)
  (apply elem  pcs #:style "Tcopyrightpage"))

(module reader syntax/module-reader
  #:read at-read
  #:read-syntax at-read-syntax
  #:whole-body-readers? #t
  #:language 'tufte-book

  (require (only-in scribble/reader
                    [read-inside at-read]
                    [read-syntax-inside at-read-syntax])))

;; header mostly taken from the lipics sample article
(define (post-process doc)
  (match-define (part tp tags tc style collect blocks parts) doc)
  (define new-style
    (make-style
     #f
     (list (latex-defaults (collection-file-path "prefix.tex" "tufte-book")
                           (collection-file-path "style.tex" "tufte-book")
                           null))))
  (part tp tags tc new-style collect blocks parts))

(define-syntax (--#%module-begin stx)
  (syntax-case stx ()
    [(_ ?e ...)
     (quasisyntax/loc stx
       (-#%module-begin doc post-process () ?e ...))]))

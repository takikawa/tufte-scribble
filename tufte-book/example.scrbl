#lang tufte-book

@(require pict
          racket/class
          racket/draw
          scriblib/autobib
          scriblib/figure
          scriblib/footnote)

@(define-cite ~cite citet generate-bibliography)

@(define plt-tr1
   (make-bib
    #:title    "Reference: Racket"
    #:author   (authors "Matthew Flatt" "PLT")
    #:date     "2010"
    #:location (techrpt-location #:institution "PLT Inc."
                                 #:number "PLT-TR-2010-1")
    #:url      "http://racket-lang.org/tr1/"))

@title{On the Colonization of Space}
@author{Zeon Deikun}
@publisher{Side 3 Publishing}

@; The epigraphs that are shown before the title page. Optional.
@epigraphs[
  (list (list @elem{Space is as infinite as we can imagine, and expanding
                    this perspective is what adjusts humankind’s focus on
                    conquering our true enemies, the formidable foes:
                    ignorance and limitation.}
              "Vanna Bonta")
        (list @elem{Space, like time, engenders forgetfulness; but it does
                    so by setting us bodily free from our surroundings and
                    giving us back our primitive, unattached state.}
              "Thomas Mann"))]

@copyright-page{Licensed under blah blah blah}

@table-of-contents[]

@section{Introduction}

Lorem ipsum dolor sit@note{This is a footnote.} amet, consectetur adipiscing
elit. Donec a diam lectus.
Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec
consectetur ante hendrerit. Donec et mollis dolor. Praesent et diam eget libero
egestas mattis sit amet vitae augue. Nam tincidunt congue enim, ut porta lorem
lacinia consectetur. Donec ut libero sed arcu vehicula ultricies a non tortor.
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut gravida
lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor.
Pellentesque auctor nisi id magna consequat sagittis. Curabitur dapibus enim
sit amet elit pharetra tincidunt feugiat nisl imperdiet. Ut convallis libero in
urna ultrices accumsan. Donec sed odio eros. Donec viverra mi quis quam
pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis
parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris
vitae nisi at sem facilisis semper ac in est.

@figure**["fig:fish" "The standard fish"]{
  @(standard-fish 60 30)
}

@figure*["fig:pict" "Some colored picts"]{
  @(let ()
     (define colors (send the-color-database get-names))
     (define picts
       (for/list ([i 15]
                  [color (in-list colors)])
         (disk 30 #:color color #:border-color "black")))
     (apply hc-append 10 picts))
}

Vivamus fermentum semper porta. Nunc diam velit, adipiscing ut tristique vitae,
sagittis vel odio. Maecenas convallis ullamcorper ultricies. Curabitur ornare,
ligula semper consectetur sagittis, nisi diam iaculis velit, id fringilla sem
nunc vel mi. Nam dictum, odio nec pretium volutpat, arcu ante placerat erat,
non tristique elit urna et turpis. Quisque mi metus, ornare sit amet fermentum
et, tincidunt et orci@~cite[plt-tr1]. Fusce eget orci a orci congue vestibulum. Ut dolor diam,
elementum et vestibulum eu, porttitor vel elit. Curabitur venenatis pulvinar
tellus gravida ornare. Sed et erat faucibus nunc euismod ultricies ut id justo.
Nullam cursus suscipit nisi, et ultrices justo sodales nec. Fusce venenatis
facilisis lectus ac semper. Aliquam at massa ipsum. Quisque bibendum purus
convallis nulla ultrices ultricies. Nullam aliquam, mi eu aliquam tincidunt,
purus velit laoreet tortor, viverra pretium nisi quam vitae mi. Fusce vel
volutpat elit. Nam sagittis nisi dui.

Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
inceptos himenaeos. In euismod ultrices facilisis. Vestibulum porta sapien
adipiscing augue congue id pretium lectus molestie. Proin quis dictum nisl.
Morbi id quam sapien, sed vestibulum sem. Duis elementum rutrum mauris sed
convallis. Proin vestibulum magna mi. Aenean tristique hendrerit magna, ac
facilisis nulla hendrerit ut. Sed non tortor sodales quam auctor elementum.
Donec hendrerit nunc eget elit pharetra pulvinar. Suspendisse id tempus tortor.
Aenean luctus, elit commodo laoreet commodo, justo nisi consequat massa, sed
vulputate quam urna quis eros. Donec vel.

@section{The Politics of Space Colonies}

Suspendisse lectus leo, consectetur in tempor sit amet, placerat quis neque.
Etiam luctus porttitor lorem, sed suscipit est rutrum non. Curabitur lobortis
nisl a enim congue semper. Aenean commodo ultrices imperdiet. Vestibulum ut
justo vel sapien venenatis tincidunt. Phasellus eget dolor sit amet ipsum
dapibus condimentum vitae quis lectus. Aliquam ut massa in turpis dapibus
convallis. Praesent elit lacus, vestibulum at malesuada et, ornare et est. Ut
augue nunc, sodales ut euismod non, adipiscing vitae orci. Mauris ut placerat
justo. Mauris in ultricies enim. Quisque nec est eleifend nulla ultrices
egestas quis ut quam. Donec sollicitudin lectus a mauris pulvinar id aliquam
urna cursus. Cras quis ligula sem, vel elementum mi. Phasellus non ullamcorper
urna.

@section[#:style 'grouper]{Last part}

@section{The Struggles of Earth}

@generate-bibliography[]

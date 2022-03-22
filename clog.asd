
;;;; clog.asd

(asdf:defsystem #:clog
  :description "The Common Lisp Omnificent GUI"

  :author "David Botton <david@botton.com>"
  :license  "BSD"
  :version "1.2.0"
  :serial t
  :pathname "source/"
  :depends-on (#-mobile #:clack
               #-mobile #:websocket-driver
               #:alexandria
               #-mobile #:hunchentoot
               #:cl-ppcre
               #:bordeaux-threads
               #-mobile #:trivial-open-browser
               #:parse-float
               #:quri
               #-mobile #:lack-middleware-static
               #-mobile #:lack-request
               #:mgl-pax
               #:cl-template
               #:closer-mop
               #:sqlite
               #:cl-dbi)
  :components ((:file "clog-connection")
	       (:file "clog")
	       (:file "clog-utilities")
	       (:file "clog-base")
	       (:file "clog-element")
	       (:file "clog-jquery")
	       (:file "clog-element-common")
	       (:file "clog-style")
	       (:file "clog-canvas")
	       (:file "clog-form")
	       (:file "clog-multimedia")
	       (:file "clog-window")
	       (:file "clog-document")
	       (:file "clog-location")
	       (:file "clog-navigator")	       
	       (:file "clog-body")
	       (:file "clog-system")
	       (:file "clog-panel")
	       (:file "clog-presentations")
	       (:file "clog-data")
	       (:file "clog-dbi")
	       (:file "clog-gui")
	       (:file "clog-web")
	       (:file "clog-helpers")))

(asdf:defsystem #:clog/docs
  :depends-on (#:clog #:3BMD #:colorize)
  :pathname "source/"
  :components ((:file "clog-docs")))

(asdf:defsystem #:clog/tools
  :depends-on (#:clog)
  :pathname "tools/"
  :components ((:file "clog-db-admin")
	       (:file "clog-builder-settings")
	       (:file "clog-templates")
	       (:file "clog-builder")))

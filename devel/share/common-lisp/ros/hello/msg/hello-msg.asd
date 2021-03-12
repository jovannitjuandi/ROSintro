
(cl:in-package :asdf)

(defsystem "hello-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Num" :depends-on ("_package_Num"))
    (:file "_package_Num" :depends-on ("_package"))
    (:file "TwoDimensional" :depends-on ("_package_TwoDimensional"))
    (:file "_package_TwoDimensional" :depends-on ("_package"))
  ))
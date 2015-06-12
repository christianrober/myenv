; Add cmake listfile names to the mode list.
(setq auto-mode-alist
        (append
	    '(("CMakeLists\\.txt\\'" . cmake-mode))
	       '(("\\.cmake\\'" . cmake-mode))
	          auto-mode-alist))
(autoload 'cmake-mode "~/.emacs.d/cmake-mode.el" t)

; Add ggtags/global mode for C/C++ code.
(autoload 'ggtags-mode "~/.emacs.d/ggtags.el" t)
(add-hook 'c-mode-common-hook
	  (lambda ()
	    (when (derived-mode-p 'c-mode 'c++-mode )
	                        (ggtags-mode 1))))

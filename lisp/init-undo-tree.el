(require 'undo-tree)

(global-undo-tree-mode)
(setq ;undo-tree-visualizer-diff t
      undo-tree-visualizer-timestamps t
      undo-tree-auto-save-history t)

(provide 'init-undo-tree)

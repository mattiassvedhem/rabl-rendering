module IsolatedEngine
  class Engine < ::Rails::Engine
    isolate_namespace IsolatedEngine
  end
end

class File
  class << self
    prepend Module.new {
      def read(name, *args)
        if args.last.is_a?(Hash)
          kwargs = args.pop
          super(name, *args, **kwargs)
        else
          super
        end
      end

      def binwrite(path, string, *args)
        if args.last.is_a?(Hash)
          kwargs = args.pop
          super(path, string, *args, **kwargs)
        else
          super
        end
      end
    }
  end
end

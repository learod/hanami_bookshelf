module Web::Views::Books
  class Create
    include Web::View
    template 'books/new'

    def form
      form_for :book, routes.books_path do
        div class: 'input' do
          label      :title
          text_field :title
        end

        div class: 'input' do
          label      :author
          text_field :author
        end

        div class: 'controls' do
          submit 'Create Book'
        end
      end
    end
  end
end
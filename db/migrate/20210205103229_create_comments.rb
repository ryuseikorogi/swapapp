class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string     :user ,null: false, foreign_key:true
      t.string     :post ,null: false, foreign_key:true
      t.text    :comments     ,null: false
      def destroy
        comment = Comment.find(params[:id])
        comment.delete
        redirect_to comment.board, flash: {notice: 'コメントが削除されました' }
      end
    end
  end
end

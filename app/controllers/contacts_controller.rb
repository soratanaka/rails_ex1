class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(params.require(:contact).permit(:name, :email, :content))
    if @contact.save
      redirect_to new_contact_path
    else
      redirect_to new_contact_path, notice: "登録に失敗しました！"
    end
  end
end

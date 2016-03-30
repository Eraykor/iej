class ReportPdf < Prawn::Document
  def initialize(participant)
    super()
    @participant = participant
    header
    text_content
  end

  def header
    #This inserts an image in the pdf file and sets the size of the image
    image "#{Rails.root}/app/assets/images/arslan-senki.jpg", width: 530, height: 150
  end

  def text_content
    # The cursor for inserting content starts on the top left of the page. Here we move it down a little to create more space between the text and the image inserted above
    y_position = cursor - 50

    # The bounding_box takes the x and y coordinates for positioning its content and some options to style it
    bounding_box([0, y_position], :width => 270, :height => 300) do
        image "#{@participant.picture.path}", width: 150, height: 150
    end

    bounding_box([350, y_position], :width => 270, :height => 300) do
      text "Suivis", size: 15, style: :bold
      text "Informations Personnelles de #{@participant.last_name}", size: 15, style: :bold
      text "Nom    #{@participant.last_name}"
      text "Prenom    #{@participant.first_name}"
      text "Date de naissance    #{@participant.birth_date}"
    end

  end
end

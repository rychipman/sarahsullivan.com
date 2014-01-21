module PDFImageHelper
	def pdf_to_image(path)
		original_pdf = File.open(path + '.pdf', 'rb').read
		image = Magick::Image::from_blob(original_pdf) do
		  self.format = 'PDF'
		  self.quality = 100
		  self.density = 144
		end
		image[0].format = 'JPG'
		image[0].to_blob
		image[0].write(path + '.jpg')
	end
end
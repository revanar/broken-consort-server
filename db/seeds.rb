# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Editor.create(name: 'Holborne')
Editor.create(name: 'Dowland')
Editor.create(name: 'Unused editor')

Editor.find_by_name('Holborne')
    .books.create(name:'Pavans Galliards Almains', abbr:'PGA', year:1599, thumb_path: '/thumb/pga/full', pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")
Editor.find_by_name('Dowland')
    .books.create(name:'Lachrimae', abbr:'Lach', year:1605, thumb_path: '/thumb/lach/full', pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")
Editor.find_by_name('Dowland')
    .books.create(name:'First Book of Songs', abbr:'1stBS', year:1597, thumb_path: '/thumb/first_book_of_songs/full')
Book.create(name: 'Unused Book')

Book.find_by_name('Pavans Galliards Almains')
    .songs.create(name: 'Bona Speranza', song_no: 1, parts_no: 5, pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")
Book.find_by_name('Pavans Galliards Almains')
    .songs.create(name: 'Tears of the Muses', song_no: 2, parts_no: 5, pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")
Book.find_by_name('Pavans Galliards Almains')
    .songs.create(name: 'Pavan', song_no: 3, parts_no: 5, pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")
Book.find_by_name('Lachrimae')
    .songs.create(name: 'Lachrimae Antiquae', song_no: 1, parts_no: 5, pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")
Book.find_by_name('Lachrimae')
    .songs.create(name: 'Lachrimae Antiquae Novae', song_no:2, parts_no: 5)
Book.find_by_name('First Book of Songs')
    .songs.create(name: 'Unquiet Thoughts', song_no: 1, parts_no: 4, pdf_path: "data:application/pdf;base64,#{Base64.encode64(File.read('test.pdf'))}")

Composer.create(name: 'Example Composer').songs << Song.find_by_name('Bona Speranza')
Composer.create(name: 'Test Man').songs << Song.find_by_name('Tears of the Muses')
Composer.create(name: 'Unusued Composer')

language = Language.create(name: 'English')
language.songs << Song.find_by_name('Bona Speranza')
language.songs << Song.find_by_name('Unquiet Thoughts')

language = Language.create(name: 'Latin')
language.songs << Song.find_by_name('Unquiet Thoughts')

Collection.create(name:'Test Collection', creator: "Emmaface", desc: "A description of this test collection", thumb_path:'/thumb/collections/test_collection', pdf_path: '/pdf/collections/test_collection')
Collection.create(name:'Test Collection 2', creator: "Duck with a face", desc: "A very quacky collection", thumb_path:'/thumb/collections/test_collection_2', pdf_path: '/pdf/collections/test_collection_2')

tag = Tag.create(name:"Exciting", abbr:'Hot!', color:"#FF0000", desc:"A very exciting tag!")
tag.songs << Song.find_by_name('Bona Speranza')
tag.songs << Song.find_by_name('Tears of the Muses')

tag = Tag.create(name:"Tasty", abbr:'Tasty', color:"#00FF00")
tag.songs << Song.find_by_name('Bona Speranza')




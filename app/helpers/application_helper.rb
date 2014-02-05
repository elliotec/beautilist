module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder, child: @list.children.build)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
end


{ "utf8"=>"✓", 
  "authenticity_token"=>"Lj7kek39fcBmqnqhR3TCYrKi0UBTDMEBrFh9In/8NDE=", 
  "list"=> {
    "name"=>"1028", 
    "children_attributes"=>{
      "0"=>{
        "name"=>"1028a", 
        "_destroy"=>"false"
      }, 
      "1391624894820"=>{
        "children_attributes"=>{
          "0"=>{
            "name"=>"1028b", 
            "_destroy"=>"false"}
          }
        }, 
      "1391624896766"=>{
        "children_attributes"=>{
          "0"=>{
            "name"=>"1028c", 
            "_destroy"=>"false"
          }
        }
      }
    }
  }, 
  "commit"=>"Create List"
  }

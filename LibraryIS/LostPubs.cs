//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibraryIS
{
    using System;
    using System.Collections.Generic;
    
    public partial class LostPubs
    {
        public int Id { get; set; }
        public Nullable<int> LibrarianId { get; set; }
        public int ClientId { get; set; }
        public int PublicationId { get; set; }
        public int Count { get; set; }
    
        public virtual Librarian Librarian { get; set; }
        public virtual Publication Publication { get; set; }
    }
}

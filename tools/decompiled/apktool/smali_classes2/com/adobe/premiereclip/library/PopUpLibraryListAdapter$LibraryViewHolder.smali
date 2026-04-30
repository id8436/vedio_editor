.class Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PopUpLibraryListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private itemView:Landroid/view/View;

.field private libMetaInfoView:Landroid/view/View;

.field private libNameView:Landroid/view/View;

.field final synthetic this$0:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 154
    iput-object p1, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->this$0:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    .line 155
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 156
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iput-object p2, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->itemView:Landroid/view/View;

    .line 159
    const v0, 0x7f1205da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->libNameView:Landroid/view/View;

    .line 160
    const v0, 0x7f1205db

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->libMetaInfoView:Landroid/view/View;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->libNameView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;)Landroid/view/View;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->libMetaInfoView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->this$0:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->access$300(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->this$0:Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;

    invoke-static {v0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;->access$300(Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter;)Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/adobe/premiereclip/library/PopUpLibraryListAdapter$LibraryClickListener;->onPopupLibraryClicked(Landroid/view/View;I)V

    .line 167
    :cond_0
    return-void
.end method

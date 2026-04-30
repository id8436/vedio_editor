.class Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AdobeEditErrorSummaryFragment.java"


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private position:I

.field private textView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;


# direct methods
.method private constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;)V
    .locals 1

    .prologue
    .line 162
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->this$1:Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->position:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$1;)V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;-><init>(Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter;)V

    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->position:I

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public setImageView(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 174
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->position:I

    .line 190
    return-void
.end method

.method public setTextView(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/adobe/creativesdk/foundation/internal/storage/controllers/edit/AdobeEditErrorSummaryFragment$EditErrorDetailsListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 182
    return-void
.end method

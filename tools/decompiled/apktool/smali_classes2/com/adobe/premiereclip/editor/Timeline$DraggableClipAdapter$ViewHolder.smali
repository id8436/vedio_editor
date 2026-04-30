.class public Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;
.super Lcom/e/a/a/a/d/a;
.source "Timeline.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/adobe/premiereclip/util/Utilities$ClipImageHolder;


# instance fields
.field public deleteBtn:Landroid/widget/ImageView;

.field public errorIcon:Landroid/widget/ImageView;

.field public key:Ljava/lang/String;

.field public mClipFrame:Landroid/widget/ImageView;

.field public mClipThumb:Landroid/widget/ImageView;

.field public mClipTime:Landroid/widget/TextView;

.field public mStorycardCam:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

.field public videoClipIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 428
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    .line 429
    invoke-direct {p0, p2}, Lcom/e/a/a/a/d/a;-><init>(Landroid/view/View;)V

    .line 430
    const v0, 0x7f12057b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    .line 431
    const v0, 0x7f12057e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    .line 432
    const v0, 0x7f12057c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    .line 433
    const v0, 0x7f12057f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    .line 434
    const v0, 0x7f12057d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mStorycardCam:Landroid/widget/ImageView;

    .line 435
    const v0, 0x7f120580

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->videoClipIcon:Landroid/widget/ImageView;

    .line 436
    const v0, 0x7f120581

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->errorIcon:Landroid/widget/ImageView;

    .line 438
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 439
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 441
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipFrame:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->this$0:Lcom/adobe/premiereclip/editor/Timeline;

    iget v1, v1, Lcom/adobe/premiereclip/editor/Timeline;->timelineThumbSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 443
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipTime:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/h/a/d;->a(Landroid/view/View;)V

    .line 445
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->deleteBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder$1;-><init>(Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    return-void
.end method


# virtual methods
.method public getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->mClipThumb:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->key:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->this$1:Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;

    invoke-virtual {p0}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/editor/Timeline$DraggableClipAdapter;->onClickClip(I)V

    .line 468
    return-void
.end method

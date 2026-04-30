.class Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->access$000(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 110
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->access$000(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->access$000(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 112
    const-string/jumbo v2, "colorpi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "color_box w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", h = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->access$100(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Lcom/adobe/premiereclip/view/ColorPickerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/premiereclip/view/ColorPickerView;->setSize(I)V

    .line 115
    iget-object v0, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->access$100(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)Lcom/adobe/premiereclip/view/ColorPickerView;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/premiereclip/editor/ColorPickerActivity$1;->this$0:Lcom/adobe/premiereclip/editor/ColorPickerActivity;

    invoke-static {v1}, Lcom/adobe/premiereclip/editor/ColorPickerActivity;->access$200(Lcom/adobe/premiereclip/editor/ColorPickerActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/premiereclip/view/ColorPickerView;->setCurrentColor(I)V

    .line 116
    return-void
.end method

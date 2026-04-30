.class Lcom/adobe/premiereclip/BottomSheetView$1;
.super Ljava/lang/Object;
.source "BottomSheetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/BottomSheetView;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/BottomSheetView;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adobe/premiereclip/BottomSheetView$1;->this$0:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adobe/premiereclip/BottomSheetView$1;->this$0:Lcom/adobe/premiereclip/BottomSheetView;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/BottomSheetView;->closeView()V

    .line 36
    return-void
.end method

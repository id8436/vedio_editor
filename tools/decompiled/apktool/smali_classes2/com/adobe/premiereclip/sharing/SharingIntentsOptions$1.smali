.class Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;
.super Ljava/lang/Object;
.source "SharingIntentsOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions$1;->this$0:Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/sharing/SharingIntentsOptions;->onShareIntentsClosed()V

    .line 73
    return-void
.end method

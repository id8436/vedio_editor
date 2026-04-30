.class Lcom/learnncode/mediachooser/n;
.super Ljava/lang/Object;
.source "VideoControllerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/learnncode/mediachooser/m;


# direct methods
.method constructor <init>(Lcom/learnncode/mediachooser/m;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/learnncode/mediachooser/n;->a:Lcom/learnncode/mediachooser/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/learnncode/mediachooser/n;->a:Lcom/learnncode/mediachooser/m;

    invoke-static {v0}, Lcom/learnncode/mediachooser/m;->a(Lcom/learnncode/mediachooser/m;)V

    .line 367
    iget-object v0, p0, Lcom/learnncode/mediachooser/n;->a:Lcom/learnncode/mediachooser/m;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/learnncode/mediachooser/m;->a(I)V

    .line 368
    return-void
.end method

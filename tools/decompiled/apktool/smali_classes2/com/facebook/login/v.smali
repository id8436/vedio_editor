.class Lcom/facebook/login/v;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/facebook/login/y;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    const-string/jumbo v0, "fragment"

    invoke-static {p1, v0}, Lcom/facebook/i/az;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iput-object p1, p0, Lcom/facebook/login/v;->a:Landroid/support/v4/app/Fragment;

    .line 540
    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/facebook/login/v;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/facebook/login/v;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

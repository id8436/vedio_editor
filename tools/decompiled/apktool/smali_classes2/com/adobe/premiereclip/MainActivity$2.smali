.class Lcom/adobe/premiereclip/MainActivity$2;
.super Landroid/support/v4/app/ActionBarDrawerToggle;
.source "MainActivity.java"


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
    .locals 6

    .prologue
    .line 276
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$2;->this$0:Lcom/adobe/premiereclip/MainActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$2;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->access$202(Lcom/adobe/premiereclip/MainActivity;Z)Z

    .line 280
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$2;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/MainActivity;->invalidateOptionsMenu()V

    .line 281
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$2;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->access$202(Lcom/adobe/premiereclip/MainActivity;Z)Z

    .line 286
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$2;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-virtual {v0}, Lcom/adobe/premiereclip/MainActivity;->invalidateOptionsMenu()V

    .line 287
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 2

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->onDrawerStateChanged(I)V

    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$2;->this$0:Lcom/adobe/premiereclip/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/premiereclip/MainActivity;->access$202(Lcom/adobe/premiereclip/MainActivity;Z)Z

    .line 295
    :cond_0
    return-void
.end method

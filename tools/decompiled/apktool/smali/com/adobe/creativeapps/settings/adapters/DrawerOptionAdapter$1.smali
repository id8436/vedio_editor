.class Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$1;
.super Ljava/lang/Object;
.source "DrawerOptionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$1;->this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$1;->this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->access$000(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;->onClick(Landroid/view/View;I)V

    .line 67
    return-void
.end method

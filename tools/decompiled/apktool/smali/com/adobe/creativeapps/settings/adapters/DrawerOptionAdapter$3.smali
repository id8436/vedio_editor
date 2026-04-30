.class Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;
.super Ljava/lang/Object;
.source "DrawerOptionAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;I)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;->this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    iput p2, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;->this$0:Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;

    invoke-static {v0}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;->access$000(Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter;)Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$3;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/adobe/creativeapps/settings/adapters/DrawerOptionAdapter$OnItemClickListener;->onClick(Landroid/view/View;I)V

    .line 224
    return-void
.end method

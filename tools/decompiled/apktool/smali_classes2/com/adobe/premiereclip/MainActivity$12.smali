.class Lcom/adobe/premiereclip/MainActivity$12;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/adobe/premiereclip/dialogs/AbstractDialog$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/adobe/premiereclip/MainActivity;


# direct methods
.method constructor <init>(Lcom/adobe/premiereclip/MainActivity;)V
    .locals 0

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/adobe/premiereclip/MainActivity$12;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 1686
    invoke-static {}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->getInstance()Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/premiereclip/dcx/DCXPreferencesManager;->resetPreferences()V

    .line 1687
    iget-object v0, p0, Lcom/adobe/premiereclip/MainActivity$12;->this$0:Lcom/adobe/premiereclip/MainActivity;

    invoke-static {v0}, Lcom/adobe/premiereclip/MainActivity;->access$1600(Lcom/adobe/premiereclip/MainActivity;)V

    .line 1688
    return-void
.end method

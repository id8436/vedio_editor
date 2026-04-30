.class Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$1;
.super Ljava/lang/Object;
.source "BehanceSDKProjectEditorTextFontsRecyclerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;

.field final synthetic val$font:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;


# direct methods
.method constructor <init>(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;

    iput-object p2, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$1;->val$font:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$1;->this$0:Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;

    invoke-static {v0}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;->access$000(Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter;)Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$TextFontCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$1;->val$font:Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;

    invoke-interface {v0, v1}, Lcom/behance/sdk/ui/adapters/BehanceSDKProjectEditorTextFontsRecyclerAdapter$TextFontCallback;->onItemSelected(Lcom/behance/sdk/enums/BehanceSDKProjectEditorTextFont;)V

    .line 43
    return-void
.end method

.class Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;
.super Ljava/lang/Object;
.source "CustomElementCollection.java"


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->value:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/spreadsheet/CustomElementCollection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->this$0:Lcom/google/gdata/data/spreadsheet/CustomElementCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p2, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->value:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/gdata/data/spreadsheet/CustomElementCollection$CustomElement;->value:Ljava/lang/String;

    return-object v0
.end method

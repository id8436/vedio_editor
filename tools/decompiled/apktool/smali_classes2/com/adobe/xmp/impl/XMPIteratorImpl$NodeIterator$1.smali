.class Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;
.super Ljava/lang/Object;
.source "XMPIteratorImpl.java"

# interfaces
.implements Lcom/adobe/xmp/properties/XMPPropertyInfo;


# instance fields
.field final synthetic this$1:Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

.field private final synthetic val$baseNS:Ljava/lang/String;

.field private final synthetic val$node:Lcom/adobe/xmp/impl/XMPNode;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;Lcom/adobe/xmp/impl/XMPNode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->this$1:Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator;

    iput-object p2, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    iput-object p3, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$baseNS:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$path:Ljava/lang/String;

    iput-object p5, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$value:Ljava/lang/String;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Lcom/adobe/xmp/impl/QName;

    iget-object v1, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v1}, Lcom/adobe/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/adobe/xmp/impl/QName;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$baseNS:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOptions()Lcom/adobe/xmp/options/PropertyOptions;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$node:Lcom/adobe/xmp/impl/XMPNode;

    invoke-virtual {v0}, Lcom/adobe/xmp/impl/XMPNode;->getOptions()Lcom/adobe/xmp/options/PropertyOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$path:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/adobe/xmp/impl/XMPIteratorImpl$NodeIterator$1;->val$value:Ljava/lang/String;

    return-object v0
.end method

package store

import (
	"net/http"

	"github.com/gin-gonic/gin"
)
func GetStore(ctx *gin.Context)  {
    
	storeId:= ctx.Param("store_id")
    ctx.JSON(http.StatusOK, gin.H{
        "name": "Daichi Store",
        "storeId": storeId,
    })
    // client, err := config.Init_Firebase(ctx)
    // if err != nil {
    //     log.Fatal(err)
    // }
 
    // データ追加

	
    // docs, err := client.Collection("merchants").Doc(merchantId).Collection("stores").Where("storeId","==",storeId).OrderBy("storeId", firestore.Desc).Limit(1).Documents(ctx).GetAll()
    // if err != nil {
    //     log.Fatalf("Failed adding alovelace: %v", err)
    // }
	// // s := entity.Store{}
	// // mapToStruct(docs .Data(), &s)
    // stores := make([]*entity.Store, 0)
    // for _, doc := range docs {
    //     // 構造体の初期化
    //     s := new(entity.Store)
    //     // 構造体にFirestoreのデータをセット
    //     mapToStruct(doc.Data(), &s)
    //     // ドキュメント名を取得してnameにセット
    //     fmt.Println(s)
    //     // 配列に構造体をセット
    //     stores = append(stores, s)
    // }
	// fmt.Println(docs)
    // 切断
    // defer client.Close()
    // return ctx.JSON(http.StatusOK, gin.H{
    //     "name": "Daichi Store",
    //     "storeId": storeId,
    // })
    
    // if len(stores) >0{
    //     s := stores[0]
    //     // ctx.JSON(http.StatusOK, s);
        
    // } else {
    //     ctx.JSON(http.StatusNotFound, gin.H{
    //         "message": "Not found.",
    //         "shop_id": storeId,
    //     })
    // }
    
    // エラーなしは成功
    // return err
}

// func mapToStruct(m map[string]interface{}, val interface{}) error {
//     tmp, err := json.Marshal(m)
//     if err != nil {
//         return err
//     }
//     err = json.Unmarshal(tmp, val)
//     if err != nil {
//         return err
//     }
//     return nil
// }
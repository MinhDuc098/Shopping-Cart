/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import dal.DAO;
import java.util.List;
import model.OrderLine;

/**
 *
 * @author AS
 */
public class cart {
    public OrderLine getOrderLineByBookId(List<OrderLine> order, int id){
        
        for (OrderLine orderLine : order) {
            if(orderLine.getProduct().getId() == id) return orderLine;
        }
        return null;
    }
    
    public List<OrderLine> addOrder(List<OrderLine> order, int id, int quantity) {
        DAO bdao = new DAO();
        if(getOrderLineByBookId(order, id)!=null){
            OrderLine o = getOrderLineByBookId(order, id);
            o.setQuantity(o.getQuantity() + quantity);
        }else{
            order.add(new OrderLine(bdao.getProductById(id), quantity));
        }
        return order;
    }
    
    public List<OrderLine> removeOrder(List<OrderLine> order, int id){
        OrderLine o = getOrderLineByBookId(order, id);
        order.remove(o);
        return order;
    }
}

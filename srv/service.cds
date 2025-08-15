using {com.sales as sales} from '../db/schema';

service SalesSRV {

    entity Header as projection on sales.Header;
    entity Items  as projection on sales.Items;

}
